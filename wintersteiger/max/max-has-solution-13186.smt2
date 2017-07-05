(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7166703028387717555602876018383540213108062744140625p-229 {+ 3227596108812193 -229 (1.98984e-069)}
; Y = 1.4639644033796892497178987468942068517208099365234375p-149 {+ 2089509914173943 -149 (2.05145e-045)}
; 1.7166703028387717555602876018383540213108062744140625p-229 M 1.4639644033796892497178987468942068517208099365234375p-149 == 1.4639644033796892497178987468942068517208099365234375p-149
; [HW: 1.4639644033796892497178987468942068517208099365234375p-149] 

; mpf : + 2089509914173943 -149
; mpfd: + 2089509914173943 -149 (2.05145e-045) class: Pos. norm. non-zero
; hwf : + 2089509914173943 -149 (2.05145e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011010 #b1011011101110111101101000111100010110100111110100001)))
(assert (= y (fp #b0 #b01101101010 #b0111011011000110010111110000001100000110000111110111)))
(assert (= r (fp #b0 #b01101101010 #b0111011011000110010111110000001100000110000111110111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
