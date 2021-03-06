(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4C065FB5)))
;; x should be Float32(0x4C065FB5 [Rational(35225300), 35225300.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0026D076)))
;; y should be Float32(0x0026D076 [Rational(1271867, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x803D4893)))
;; z should be Float32(0x803D4893 [Rational(-4016275, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x0C22FD04))))
(check-sat)
(exit)
