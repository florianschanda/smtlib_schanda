(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00011100010100100001110)))
;; x should be Float32(0x000E290E [Rational(464007, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1964227929.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x80017FA3 [Rational(-98211, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
