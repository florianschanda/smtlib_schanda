(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 1.0 3568119231764899702645714923623737840956866560.0))))
;; w should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
