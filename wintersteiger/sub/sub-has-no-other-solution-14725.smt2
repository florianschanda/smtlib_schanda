(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0650307008460442315112004507682286202907562255859375p-109 {+ 292872240097887 -109 (1.64094e-033)}
; Y = -1.2859309691359157579171323959599249064922332763671875p-620 {- 1287718606054195 -620 (-2.95543e-187)}
; 1.0650307008460442315112004507682286202907562255859375p-109 - -1.2859309691359157579171323959599249064922332763671875p-620 == 1.06503070084604445355580537579953670501708984375p-109
; [HW: 1.06503070084604445355580537579953670501708984375p-109] 

; mpf : + 292872240097888 -109
; mpfd: + 292872240097888 -109 (1.64094e-033) class: Pos. norm. non-zero
; hwf : + 292872240097888 -109 (1.64094e-033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010010 #b0001000010100101110110100001110101011110101001011111)))
(assert (= y (fp #b1 #b00110010011 #b0100100100110010110001011010000101011010001100110011)))
(assert (= r (fp #b0 #b01110010010 #b0001000010100101110110100001110101011110101001100000)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
