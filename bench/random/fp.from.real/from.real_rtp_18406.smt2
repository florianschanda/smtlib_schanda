(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00100010 #b10110101111000010111011)))
;; x should be Float32(0x115AF0BB [Rational(14348475, 83076749736557242056487941267521536), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 52856040423.0 415383748682786210282439706337607680000.0)))))
;; w should be Float32(0x91214DC8 [Rational(-1321401, 10384593717069655257060992658440192), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
