(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100100011011101000010)))
;; x should be Float32(0x00723742 [Rational(3742625, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 4678282113.0 446014903970612462830714365452967230119608320000.0))))
;; w should be Float32(0x00723744 [Rational(1871313, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
