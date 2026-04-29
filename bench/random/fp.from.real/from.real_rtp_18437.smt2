(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001101000010101101011)))
;; x should be Float32(0x0026856B [Rational(2524523, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 12622616113.0 3568119231764899702645714923623737840956866560000.0))))
;; w should be Float32(0x0026856C [Rational(631131, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
