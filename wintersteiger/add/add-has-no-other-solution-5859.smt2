(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.01869084971202372713605655007995665073394775390625p443 {- 84176103798308 443 (-2.31382e+133)}
; Y = 1.20156996602799015505524948821403086185455322265625p647 {+ 907790423892740 647 (7.01708e+194)}
; -1.01869084971202372713605655007995665073394775390625p443 + 1.20156996602799015505524948821403086185455322265625p647 == 1.20156996602799015505524948821403086185455322265625p647
; [HW: 1.20156996602799015505524948821403086185455322265625p647] 

; mpf : + 907790423892740 647
; mpfd: + 907790423892740 647 (7.01708e+194) class: Pos. norm. non-zero
; hwf : + 907790423892740 647 (7.01708e+194) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111010 #b0000010011001000111011000110110000111111011000100100)))
(assert (= y (fp #b0 #b11010000110 #b0011001110011010000101101101101111110010001100000100)))
(assert (= r (fp #b0 #b11010000110 #b0011001110011010000101101101101111110010001100000100)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
