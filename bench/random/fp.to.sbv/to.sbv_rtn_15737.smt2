(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110000 #b00000010101101000110000)))
;; x should be Float32(0x58015A30 [Rational(568897409384448), 568897409384448.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 568897409384448

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000010000001010110100011000000000000000000000000000000))
;; z should be 568897409384448

(assert (not (= y z)))
(check-sat)
(exit)
