(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3030879086397681998477082743193022906780242919921875p-614 {+ 1364986592410563 -614 (1.91671e-185)}
; 1.3030879086397681998477082743193022906780242919921875p-614 | == 1.3030879086397681998477082743193022906780242919921875p-614
; [HW: 1.3030879086397681998477082743193022906780242919921875p-614] 

; mpf : + 1364986592410563 -614
; mpfd: + 1364986592410563 -614 (1.91671e-185) class: Pos. norm. non-zero
; hwf : + 1364986592410563 -614 (1.91671e-185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011001 #b0100110110010111001010110100111101101011101111000011)))
(assert (= r (fp #b0 #b00110011001 #b0100110110010111001010110100111101101011101111000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
