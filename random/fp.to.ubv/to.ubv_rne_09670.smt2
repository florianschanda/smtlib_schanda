(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ACB6BA3)))
;; x should be Float32(0x4ACB6BA3 [Rational(13331363, 2), 6665681.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 6665682

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011001011011010111010010))
;; z should be 6665682

(assert (not (= y z)))
(check-sat)
(exit)
