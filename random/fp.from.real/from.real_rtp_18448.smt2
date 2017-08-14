(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100100011011101000010)))
;; x should be Float32(0x00723742 [Rational(3742625, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 20592346083.0 3568119231764899702645714923623737840956866560000.0))))
;; w should be Float32(0x003ED7C6 [Rational(2059235, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
