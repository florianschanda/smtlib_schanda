(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.363950609700033123061757578398101031780242919921875p671 {- 1639087830226334 671 (-1.33637e+202)}
; Y = 1.77018481189844134604527425835840404033660888671875p-573 {+ 3468604031872236 -573 (5.72573e-173)}
; -1.363950609700033123061757578398101031780242919921875p671 + 1.77018481189844134604527425835840404033660888671875p-573 == -1.3639506097000329010171526533667929470539093017578125p671
; [HW: -1.3639506097000329010171526533667929470539093017578125p671] 

; mpf : - 1639087830226333 671
; mpfd: - 1639087830226333 671 (-1.33637e+202) class: Neg. norm. non-zero
; hwf : - 1639087830226333 671 (-1.33637e+202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011110 #b0101110100101011110111011111111000000101010110011110)))
(assert (= y (fp #b0 #b00111000010 #b1100010100101010110101001111001011111010110011101100)))
(assert (= r (fp #b1 #b11010011110 #b0101110100101011110111011111111000000101010110011101)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
