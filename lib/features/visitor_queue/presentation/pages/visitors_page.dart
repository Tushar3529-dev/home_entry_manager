import 'package:assignment/core/enums/filter_visitor.dart';
import 'package:assignment/core/enums/visitor_status.dart';
import 'package:assignment/core/widgets/app_bottom_navbar.dart';
import 'package:assignment/features/visitor_queue/presentation/cubit/visitor_cubit.dart';
import 'package:assignment/features/visitor_queue/presentation/cubit/visitor_state.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/activity_page.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/home_page.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/send_notification_page.dart';
import 'package:assignment/features/visitor_queue/presentation/widgets/filter_chips.dart';

import 'package:assignment/features/visitor_queue/presentation/widgets/visitors_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisitorsPage extends StatelessWidget {
  const VisitorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Visitor & Delivery Queue',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),

        /* leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ), */

        actions: [
          IconButton(
            onPressed: () {
                Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const SendNotificationPage(),
            ),
          );
            },
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: BlocBuilder<
          VisitorCubit,
          VisitorState>(
        builder: (
          context,
          state,
        ) {

          if (state.loading) {
            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          }
          final allCount = state.visitors.length;

final pendingCount = state.visitors
    .where(
      (e) => e.status == VisitorStatus.Pending,
    )
    .length;

final approvedCount = state.visitors
    .where(
      (e) => e.status == VisitorStatus.Approved,
    )
    .length;

final cancelledCount = state.visitors
    .where(
      (e) => e.status == VisitorStatus.Cancelled,
    )
    .length;
final filteredVisitors = switch (state.filter) {
  VisitorFilter.All => state.visitors,

  VisitorFilter.Pending => state.visitors
      .where(
        (e) => e.status.name == 'Pending',
      )
      .toList(),

  VisitorFilter.Approved => state.visitors
      .where(
        (e) => e.status.name== 'Approved',
      )
      .toList(),

  VisitorFilter.Cancelled => state.visitors
      .where(
        (e) => e.status.name == 'Cancelled',
      )
      .toList(),
};
          return Padding(
            padding:
                const EdgeInsets.all(16),

            child: Column(
              children: [

                /// FILTERS
               FilterChips(
  selected: state.filter,

  allCount: allCount,

  pendingCount:
      pendingCount,

  approvedCount:
      approvedCount,

  cancelledCount:
      cancelledCount,

  onChanged: context
      .read<VisitorCubit>()
      .changeFilter,
),

                const SizedBox(
                    height: 16),

                /// LIST
                Expanded(
                  child:
                      ListView.separated(
                 itemCount:
    filteredVisitors.length,

                    separatorBuilder:
                        (
                      context,
                      index,
                    ) =>
                            const SizedBox(
                      height: 12,
                    ),

                    itemBuilder:
                        (
                      context,
                      index,
                    ) {
                      return VisitorCard(
                      visitor:
    filteredVisitors[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),

     bottomNavigationBar: AppBottomNavbar(
  currentIndex: 1,
  onTap: (index) {
    switch (index) {
      case 0:
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
        );
      
        break;

      case 1:
        
        break;

      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ActivityPage(),
          ),
        );
        break;

      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ActivityPage(),
          ),
        );
        break;
    }
  },
),
    );
    
  }
  
}