class ListNode {
  int? val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode l1, ListNode l2) {
    ListNode? result = ListNode();
    recursiveSum(result, l1, l2, 0);
    return result;
  }

  void recursiveSum(ListNode? l, ListNode? l1, ListNode? l2, int carry) {
    if (l1 == null && l2 == null && carry == 0) return;
    int nums = (l1?.val ?? 0) + (l2?.val ?? 0) + carry;
    carry = nums ~/ 10;
    l?.next = ListNode(nums % 10);
    recursiveSum(l?.next, l1?.next, l2?.next, carry);
  }
}
