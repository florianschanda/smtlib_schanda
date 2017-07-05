(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.588974223387314310684814699925482273101806640625p-236 {+ 2652504092977936 -236 (1.43892e-071)}
; 1.588974223387314310684814699925482273101806640625p-236 S == 1.2605452087836097607720375890494324266910552978515625p-118
; [HW: 1.2605452087836097607720375890494324266910552978515625p-118] 

; mpf : + 1173391305191033 -118
; mpfd: + 1173391305191033 -118 (3.79332e-036) class: Pos. norm. non-zero
; hwf : + 1173391305191033 -118 (3.79332e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010011 #b1001011011000111000000111100001110100010101100010000)))
(assert (= r (fp #b0 #b01110001001 #b0100001010110011000101110011111011011010111001111001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
