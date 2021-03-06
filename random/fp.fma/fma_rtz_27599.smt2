(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x004BE380)))
;; y should be Float32(0x004BE380 [Rational(38855, 5575186299632655785383929568162090376495104), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA316E3A)))
;; z should be Float32(0xCA316E3A [Rational(-5814045, 2), -2907022.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b10010100 #b01100010110111000111010))))
(check-sat)
(exit)
