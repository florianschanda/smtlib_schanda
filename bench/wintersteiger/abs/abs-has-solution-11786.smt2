(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.85283476243205225131305269314907491207122802734375p-775 {+ 3840826318297596 -775 (9.32374e-234)}
; 1.85283476243205225131305269314907491207122802734375p-775 | == 1.85283476243205225131305269314907491207122802734375p-775
; [HW: 1.85283476243205225131305269314907491207122802734375p-775] 

; mpf : + 3840826318297596 -775
; mpfd: + 3840826318297596 -775 (9.32374e-234) class: Pos. norm. non-zero
; hwf : + 3840826318297596 -775 (9.32374e-234) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011111000 #b1101101001010011011000010000010110001001100111111100)))
(assert (= r (fp #b0 #b00011111000 #b1101101001010011011000010000010110001001100111111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
