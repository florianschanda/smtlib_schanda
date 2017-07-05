(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4788710181293993617401838491787202656269073486328125p-775 {- 2156643338806093 -775 (-7.4419e-234)}
; Y = -1.0191390128851931518028095524641685187816619873046875p297 {- 86194451297995 297 (-2.59503e+089)}
; -1.4788710181293993617401838491787202656269073486328125p-775 * -1.0191390128851931518028095524641685187816619873046875p297 == 1.5071751496009164750233821905567310750484466552734375p-478
; [HW: 1.5071751496009164750233821905567310750484466552734375p-478] 

; mpf : + 2284113814754263 -478
; mpfd: + 2284113814754263 -478 (1.93119e-144) class: Pos. norm. non-zero
; hwf : + 2284113814754263 -478 (1.93119e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011111000 #b0111101010010111010010101000000111011110001101001101)))
(assert (= y (fp #b1 #b10100101000 #b0000010011100110010010110101101001101011011011001011)))
(assert (= r (fp #b0 #b01000100001 #b1000000111010110001110110000100011100001001111010111)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
