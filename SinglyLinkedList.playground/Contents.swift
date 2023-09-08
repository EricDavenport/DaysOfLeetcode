import Foundation

class MyLinkedList {
/*
Implement the MyLinkedList class:
     1. MyLinkedList() Initializes the MyLinkedList object.
     2. func get(index) Get the value of the indexth node in the linked list. If the index is
           invalid, return -1.
     3. func addAtHead(val) Add a node of value val before the first element of the linked list.
          After the insertion, the new node will be the first node of the linked list.
     4. func addAtTail(val) Append a node of value val as the last element of the linked list.
     5. func addAtIndex(index, val) - Add a node of value val before the indexth node in the
          linked list. If index equals the length of the linked list, the node will be appended to
          the end of the linked list. If index is greater than the length, the node will not be
          inserted.
     6. func deleteAtIndex(index) - Delete the indexth node in the linked list, if the index is
          valid.
*/
    private var head: ListNode?
    private var tail: ListNode?
    private var count = 0

    init() {}

    // func get(index){} Get the value of the indexth node in the linked list. If the index is
    //   invalid, return -1.
    func get(_ index: Int) -> Int {
        if index > count - 1 { return -1 }
        var curr = head
        var i = 0
        while curr != nil {
            print("index: \(index)\n\(i)")
            if index == i {
                return curr!.val
            } else {
                curr = curr?.next
            }
        }
        return -1
    }

    // func addAtHead(val) Add a node of value val before the first element of the linked list.
    //   After the insertion, the new node will be the first node of the linked list.
    func addAtHead(_ val: Int) {
        var newNode = ListNode(val)
        newNode.next = head
        head = newNode
        if count == 0 { tail = newNode }
        count += 1
    }

    // func addAtTail(val) Append a node of value val as the last element of the linked list.
    func addAtTail(_ val: Int) {
        var newNode = ListNode(val)
        tail?.next = newNode
        tail = newNode
        count += 1
    }

    // func addAtIndex(index, val) - Add a node of value val before the indexth node in the
    //  linked list. If index equals the length of the linked list, the node will be appended to
    //  the end of the linked list. If index is greater than the length, the node will not be
    //  inserted.
    func addAtIndex(_ index: Int, _ val: Int) {
        if index > count - 1 { return }
        if index == 0 {
            addAtHead(val)
        }
        var i = 0
        var curr = head
        var newNode = ListNode(val)
        while curr != nil {

            if index == i + 1 {
                newNode.next = curr?.next
                curr?.next = newNode
                return
            } else {
                i += 1
                curr = curr?.next
            }
            count += 1
        }
    }

    // func deleteAtIndex(index) - Delete the indexth node in the linked list, if the index is
    //  valid.
    func deleteAtIndex(_ index: Int) {
        var curr = head
        var prev = head
        var i = 0
        while curr != nil {
            if i == 0 {
                curr?.next = head
                count -= 1
                return
            }
            if index == i + 1 {
                curr = curr?.next?.next
                count -= 1
                return
            } else {
                i += 1
                curr = curr?.next
            }
        }
    }
}

/*
     1. Design your implementation of the linked list. You can choose to use a singly or doubly
          linked list.
     2. A node in a singly linked list should have two attributes: val and next. val is the value of
          the current node, and next is a pointer/reference to the next node.
     3. If you want to use the doubly linked list, you will need one more attribute prev to indicate
          the previous node in the linked list. Assume all nodes in the linked list are 0-indexed.
*/
class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val}
}

var myLinkedList = MyLinkedList()
myLinkedList.addAtHead(1);
myLinkedList.addAtTail(3);

myLinkedList.addAtIndex(1, 2);    // linked list becomes 1->2->3
//myLinkedList.get(1);              // return 2
myLinkedList.deleteAtIndex(1);    // now the linked list is 1->3
//myLinkedList.get(1);
