(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1039548035911017631605091082747094333171844482421875p-206 {+ 468170814716259 -206 (1.07343e-062)}
; Y = -1.241074207298324960646596082369796931743621826171875p-573 {- 1085701710157374 -573 (-4.0143e-173)}
; 1.1039548035911017631605091082747094333171844482421875p-206 > -1.241074207298324960646596082369796931743621826171875p-573 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110001 #b0001101010011100110010000011000110101111100101100011)))
(assert (= y (fp #b1 #b00111000010 #b0011110110110111000010100000110001000001011000111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
