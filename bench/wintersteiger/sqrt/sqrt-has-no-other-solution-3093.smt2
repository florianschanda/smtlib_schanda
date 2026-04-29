(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.573921502437712671707004119525663554668426513671875p98 {+ 2584712664518398 98 (4.98796e+029)}
; 1.573921502437712671707004119525663554668426513671875p98 S == 1.254560282504476820264471825794316828250885009765625p49
; [HW: 1.254560282504476820264471825794316828250885009765625p49] 

; mpf : + 1146437593430490 49
; mpfd: + 1146437593430490 49 (7.06255e+014) class: Pos. norm. non-zero
; hwf : + 1146437593430490 49 (7.06255e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100001 #b1001001011101100100001010000001101110000111011111110)))
(assert (= r (fp #b0 #b10000110000 #b0100000100101010110111001101100000110111100111011010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
