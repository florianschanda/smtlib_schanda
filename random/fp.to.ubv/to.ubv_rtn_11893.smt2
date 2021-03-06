(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11001011100110110100010)))
;; x should be Float32(0x4A65CDA2 [Rational(7530193, 2), 3765096.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 3765096

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001110010111001101101000))
;; z should be 3765096

(assert (not (= y z)))
(check-sat)
(exit)
