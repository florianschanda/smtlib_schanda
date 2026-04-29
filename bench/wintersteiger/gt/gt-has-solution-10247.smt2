(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3511122968852198322764479598845355212688446044921875p244 {+ 1581269209417475 244 (3.81953e+073)}
; Y = 1.0865135386462652089534230981371365487575531005859375p1011 {+ 389622340409823 1011 (2.3843e+304)}
; 1.3511122968852198322764479598845355212688446044921875p244 > 1.0865135386462652089534230981371365487575531005859375p1011 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110011 #b0101100111100010011111101101100001011000011100000011)))
(assert (= y (fp #b0 #b11111110010 #b0001011000100101110000000101001100100101100111011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
