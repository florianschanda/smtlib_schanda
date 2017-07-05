(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5790961648617878321232410598895512521266937255859375p615 {- 2608017272283231 615 (-2.14712e+185)}
; Y = 1.070977310960015582708138026646338403224945068359375p-262 {+ 319653391191286 -262 (1.44518e-079)}
; -1.5790961648617878321232410598895512521266937255859375p615 * 1.070977310960015582708138026646338403224945068359375p-262 == -1.6911761643909510866023993003182113170623779296875p353
; [HW: -1.6911761643909510866023993003182113170623779296875p353] 

; mpf : - 3112780716398456 353
; mpfd: - 3112780716398456 353 (-3.10297e+106) class: Neg. norm. non-zero
; hwf : - 3112780716398456 353 (-3.10297e+106) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001100110 #b1001010000111111101001010111000101010010000001011111)))
(assert (= y (fp #b0 #b01011111001 #b0001001000101011100100011010110101010100110011110110)))
(assert (= r (fp #b1 #b10101100000 #b1011000011110000111010111100110111010101011101111000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
