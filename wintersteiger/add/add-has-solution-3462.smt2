(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3774832627809543428298866274417378008365631103515625p-750 {- 1700033481598905 -750 (-2.32589e-226)}
; Y = -1.6724060095285480098681318850140087306499481201171875p986 {- 3028247453954451 986 (-1.09375e+297)}
; -1.3774832627809543428298866274417378008365631103515625p-750 + -1.6724060095285480098681318850140087306499481201171875p986 == -1.67240600952854823191273681004531681537628173828125p986
; [HW: -1.67240600952854823191273681004531681537628173828125p986] 

; mpf : - 3028247453954452 986
; mpfd: - 3028247453954452 986 (-1.09375e+297) class: Neg. norm. non-zero
; hwf : - 3028247453954452 986 (-1.09375e+297) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010001 #b0110000010100010101111100011110001101110011110111001)))
(assert (= y (fp #b1 #b11111011001 #b1010110000100010110011001101110010001111000110010011)))
(assert (= r (fp #b1 #b11111011001 #b1010110000100010110011001101110010001111000110010100)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
