(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4526407480463359167544012962025590240955352783203125p-444 {- 2038512704234181 -444 (-3.19772e-134)}
; Y = 1.9874390601058120608968238229863345623016357421875p-735 {+ 4447030183143608 -735 (1.09963e-221)}
; -1.4526407480463359167544012962025590240955352783203125p-444 M 1.9874390601058120608968238229863345623016357421875p-735 == 1.9874390601058120608968238229863345623016357421875p-735
; [HW: 1.9874390601058120608968238229863345623016357421875p-735] 

; mpf : + 4447030183143608 -735
; mpfd: + 4447030183143608 -735 (1.09963e-221) class: Pos. norm. non-zero
; hwf : + 4447030183143608 -735 (1.09963e-221) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001000011 #b0111001111100000010000111001100110110010001011000101)))
(assert (= y (fp #b0 #b00100100000 #b1111110011001000110011100110010111110010100010111000)))
(assert (= r (fp #b0 #b00100100000 #b1111110011001000110011100110010111110010100010111000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
