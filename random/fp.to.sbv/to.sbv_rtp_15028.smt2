(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10111011 #b00010100011001101010010)))
;; x should be Float32(0x5D8A3352 [Rational(1244799170124972032), 1244799170124972032.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 1244799170124972032

(declare-const z (_ BitVec 64))
(assert (= z #b0001000101000110011010100100000000000000000000000000000000000000))
;; z should be 1244799170124972032

(assert (not (= y z)))
(check-sat)
(exit)
