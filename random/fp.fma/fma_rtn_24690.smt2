(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x30C4F537)))
;; y should be Float32(0x30C4F537 [Rational(12907831, 9007199254740992), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00110101101011111101101)))
;; z should be Float32(0x001AD7ED [Rational(1759213, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
