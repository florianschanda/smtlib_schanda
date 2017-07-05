(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.343092771384099659570665608043782413005828857421875p1007 {+ 1545152477358942 1007 (1.84209e+303)}
; Y = -1.4713338735077996499711616706917993724346160888671875p-555 {- 2122699057096819 -555 (-1.24757e-167)}
; 1.343092771384099659570665608043782413005828857421875p1007 = -1.4713338735077996499711616706917993724346160888671875p-555 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101110 #b0101011111010100111011011000100010010110101101011110)))
(assert (= y (fp #b1 #b00111010100 #b0111100010101001010101100011010000110110100001110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
