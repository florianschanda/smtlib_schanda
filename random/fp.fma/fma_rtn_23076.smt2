(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00110010001001110000000)))
;; y should be Float32(0x80191380 [Rational(-12839, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x80000001))))
(check-sat)
(exit)
