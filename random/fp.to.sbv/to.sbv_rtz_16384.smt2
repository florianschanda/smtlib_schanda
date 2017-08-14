(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00100001110100010011011)))
;; x should be Float32(0x4A90E89B [Rational(9496731, 2), 4748365.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 4748365

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010010000111010001001101))
;; z should be 4748365

(assert (not (= y z)))
(check-sat)
(exit)
