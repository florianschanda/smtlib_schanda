(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1526007665802124879661505474359728395938873291015625p-243 {+ 687252755507097 -243 (8.15436e-074)}
; Y = -1.0226312603891940522515824341098777949810028076171875p950 {- 101922135855699 950 (-9.73229e+285)}
; 1.1526007665802124879661505474359728395938873291015625p-243 / -1.0226312603891940522515824341098777949810028076171875p950 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001100 #b0010011100010000110110000000010111001110011110011001)))
(assert (= y (fp #b1 #b11110110101 #b0000010111001011001010011000101100111101001001010011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
