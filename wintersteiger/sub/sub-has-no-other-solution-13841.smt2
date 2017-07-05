(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2380341547292055270901300900732167065143585205078125p689 {+ 1072010530539901 689 (3.1798e+207)}
; Y = -1.767978647825267035642582413856871426105499267578125p-159 {- 3458668352174370 -159 (-2.4194e-048)}
; 1.2380341547292055270901300900732167065143585205078125p689 - -1.767978647825267035642582413856871426105499267578125p-159 == 1.238034154729205749134735015104524791240692138671875p689
; [HW: 1.238034154729205749134735015104524791240692138671875p689] 

; mpf : + 1072010530539902 689
; mpfd: + 1072010530539902 689 (3.1798e+207) class: Pos. norm. non-zero
; hwf : + 1072010530539902 689 (3.1798e+207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110000 #b0011110011101111110011100110110111100100100101111101)))
(assert (= y (fp #b1 #b01101100000 #b1100010010011010001111111010100001101111100100100010)))
(assert (= r (fp #b0 #b11010110000 #b0011110011101111110011100110110111100100100101111110)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
