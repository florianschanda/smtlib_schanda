(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9794834347068384072798608031007461249828338623046875p25 {- 4411201231561291 25 (-6.64204e+007)}
; -1.9794834347068384072798608031007461249828338623046875p25 | == 1.9794834347068384072798608031007461249828338623046875p25
; [HW: 1.9794834347068384072798608031007461249828338623046875p25] 

; mpf : + 4411201231561291 25
; mpfd: + 4411201231561291 25 (6.64204e+007) class: Pos. norm. non-zero
; hwf : + 4411201231561291 25 (6.64204e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011000 #b1111101010111111011011010010011100001010001001001011)))
(assert (= r (fp #b0 #b10000011000 #b1111101010111111011011010010011100001010001001001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
