(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5668103052737942793015690767788328230381011962890625p652 {+ 2552686679620817 652 (2.92802e+196)}
; Y = 1.0983140618333815385909701944910921156406402587890625p906 {+ 442767172238097 906 (5.94159e+272)}
; 1.5668103052737942793015690767788328230381011962890625p652 % 1.0983140618333815385909701944910921156406402587890625p906 == 1.5668103052737942793015690767788328230381011962890625p652
; [HW: 1.5668103052737942793015690767788328230381011962890625p652] 

; mpf : + 2552686679620817 652
; mpfd: + 2552686679620817 652 (2.92802e+196) class: Pos. norm. non-zero
; hwf : + 2552686679620817 652 (2.92802e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001011 #b1001000100011010011110101110110000101111110011010001)))
(assert (= y (fp #b0 #b11110001001 #b0001100100101011000111000100000001001111101100010001)))
(assert (= r (fp #b0 #b11010001011 #x911a7aec2fcd1)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
