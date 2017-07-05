(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3508016045298278928754598382511176168918609619140625p17 {+ 1579869975441505 17 (177052)}
; 1.3508016045298278928754598382511176168918609619140625p17 | == 1.3508016045298278928754598382511176168918609619140625p17
; [HW: 1.3508016045298278928754598382511176168918609619140625p17] 

; mpf : + 1579869975441505 17
; mpfd: + 1579869975441505 17 (177052) class: Pos. norm. non-zero
; hwf : + 1579869975441505 17 (177052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010000 #b0101100111001110001000100100101011010111000001100001)))
(assert (= r (fp #b0 #b10000010000 #b0101100111001110001000100100101011010111000001100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
