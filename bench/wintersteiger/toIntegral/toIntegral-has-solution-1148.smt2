(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0185130813716420927761419079615734517574310302734375 640 {+ 83375506366807 640 (4.64691e+192)}
; 1.0185130813716420927761419079615734517574310302734375 640 I == 1.0185130813716420927761419079615734517574310302734375 640
; [HW: 1.0185130813716420927761419079615734517574310302734375 640] 

; mpf : + 83375506366807 640
; mpfd: + 83375506366807 640 (4.64691e+192) class: Pos. norm. non-zero
; hwf : + 83375506366807 640 (4.64691e+192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111111 #b0000010010111101010001011111011100001010000101010111)))
(assert (= r (fp #b0 #b11001111111 #b0000010010111101010001011111011100001010000101010111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
