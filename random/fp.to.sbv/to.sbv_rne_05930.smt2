(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x804B2C58)))
;; x should be Float32(0x804B2C58 [Rational(-615819, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNE x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
