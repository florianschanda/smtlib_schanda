(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807561B7)))
;; x should be Float32(0x807561B7 [Rational(-7692727, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xB6A1A74C)))
;; y should be Float32(0xB6A1A74C [Rational(-2648531, 549755813888), -0.000005])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x807FFFFF)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x807FFFDA))))
(check-sat)
(exit)
