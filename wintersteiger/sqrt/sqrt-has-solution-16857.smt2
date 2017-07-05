(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1759053840450366390513181613641791045665740966796875p786 {+ 792207422037691 786 (4.78574e+236)}
; 1.1759053840450366390513181613641791045665740966796875p786 S == 1.0843917115346448643009580337093211710453033447265625p393
; [HW: 1.0843917115346448643009580337093211710453033447265625p393] 

; mpf : + 380066480620585 393
; mpfd: + 380066480620585 393 (2.18763e+118) class: Pos. norm. non-zero
; hwf : + 380066480620585 393 (2.18763e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010001 #b0010110100001000001000101001111110101001111010111011)))
(assert (= r (fp #b0 #b10110001000 #b0001010110011010101100011111100100011000010000101001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
