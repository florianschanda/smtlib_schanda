(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000011100001101011101)))
;; x should be Float32(0x8041C35D [Rational(-4309853, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 14636085953.0 3568119231764899702645714923623737840956866560000.0))))
;; w should be Float32(0x002CAA72 [Rational(1463609, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
