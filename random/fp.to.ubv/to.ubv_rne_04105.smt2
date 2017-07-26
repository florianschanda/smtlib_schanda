(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x40870386)))
;; x should be Float32(0x40870386 [Rational(4424131, 1048576), 4.219180])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 4

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000100))
;; z should be 4

(assert (not (= y z)))
(check-sat)
(exit)
