(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00100010 #b10110101111000010111011)))
;; x should be Float32(0x115AF0BB [Rational(14348475, 83076749736557242056487941267521536), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 14900308185928902275030884077869881453363727.0 86271829334882047342934448278462818155638862152129831939531552797491200.0))))
;; w should be Float32(0x115AF0BB [Rational(14348475, 83076749736557242056487941267521536), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
