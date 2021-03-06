(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10111001001100011111011)))
;; y should be Float32(0x005C98FB [Rational(6068475, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x63E15E8B)))
;; z should be Float32(0x63E15E8B [Rational(8314659910891954241536), 8314659910891954241536.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x63E15E8B))))
(check-sat)
(exit)
