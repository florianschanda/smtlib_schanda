(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.67774967242835426617375560454092919826507568359375p-991 {+ 3052313172198812 -991 (8.01681e-299)}
; 1.67774967242835426617375560454092919826507568359375p-991 | == 1.67774967242835426617375560454092919826507568359375p-991
; [HW: 1.67774967242835426617375560454092919826507568359375p-991] 

; mpf : + 3052313172198812 -991
; mpfd: + 3052313172198812 -991 (8.01681e-299) class: Pos. norm. non-zero
; hwf : + 3052313172198812 -991 (8.01681e-299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000100000 #b1010110110000001000000001010010111110100010110011100)))
(assert (= r (fp #b0 #b00000100000 #b1010110110000001000000001010010111110100010110011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
