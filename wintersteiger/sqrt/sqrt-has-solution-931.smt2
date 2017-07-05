(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4265368411126908565478288437589071691036224365234375p584 {+ 1920951158694903 584 (9.03234e+175)}
; 1.4265368411126908565478288437589071691036224365234375p584 S == 1.1943771770729256775922522137989290058612823486328125p292
; [HW: 1.1943771770729256775922522137989290058612823486328125p292] 

; mpf : + 875396982234957 292
; mpfd: + 875396982234957 292 (9.50386e+087) class: Pos. norm. non-zero
; hwf : + 875396982234957 292 (9.50386e+087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000111 #b0110110100110001100001001011011100011110001111110111)))
(assert (= r (fp #b0 #b10100100011 #b0011000111000010101100111110001010011101111101001101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
