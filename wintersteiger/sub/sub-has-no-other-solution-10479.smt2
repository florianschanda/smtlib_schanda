(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1333305801332882456478046151460148394107818603515625p344 {+ 600467551005369 344 (4.06139e+103)}
; Y = -1.967970198330776465667213415144942700862884521484375p-404 {- 4359350224508230 -404 (-4.76322e-122)}
; 1.1333305801332882456478046151460148394107818603515625p344 - -1.967970198330776465667213415144942700862884521484375p-404 == 1.133330580133288467692409540177322924137115478515625p344
; [HW: 1.133330580133288467692409540177322924137115478515625p344] 

; mpf : + 600467551005370 344
; mpfd: + 600467551005370 344 (4.06139e+103) class: Pos. norm. non-zero
; hwf : + 600467551005370 344 (4.06139e+103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010111 #b0010001000100001111100111111000100111010101010111001)))
(assert (= y (fp #b1 #b01001101011 #b1111011111001100111001010001100101010101010101000110)))
(assert (= r (fp #b0 #b10101010111 #b0010001000100001111100111111000100111010101010111010)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
