(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2835326634480412888450473474222235381603240966796875p876 {+ 1276917597451963 876 (6.46671e+263)}
; 1.2835326634480412888450473474222235381603240966796875p876 S == 1.13293100559921189329770641052164137363433837890625p438
; [HW: 1.13293100559921189329770641052164137363433837890625p438] 

; mpf : + 598668027282596 438
; mpfd: + 598668027282596 438 (8.04158e+131) class: Pos. norm. non-zero
; hwf : + 598668027282596 438 (8.04158e+131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101011 #b0100100010010101100110001011110011011011011010111011)))
(assert (= r (fp #b0 #b10110110101 #b0010001000000111110001000011000110101100010010100100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
