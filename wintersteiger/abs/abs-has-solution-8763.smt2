(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9319298993255535901170105717028491199016571044921875p149 {- 4197039147337987 149 (-1.37867e+045)}
; -1.9319298993255535901170105717028491199016571044921875p149 | == 1.9319298993255535901170105717028491199016571044921875p149
; [HW: 1.9319298993255535901170105717028491199016571044921875p149] 

; mpf : + 4197039147337987 149
; mpfd: + 4197039147337987 149 (1.37867e+045) class: Pos. norm. non-zero
; hwf : + 4197039147337987 149 (1.37867e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010100 #b1110111010010010111101010011011111000100100100000011)))
(assert (= r (fp #b0 #b10010010100 #b1110111010010010111101010011011111000100100100000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
