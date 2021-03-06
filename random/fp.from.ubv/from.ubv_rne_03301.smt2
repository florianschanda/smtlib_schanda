(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0100000000000000000000000000000000000000000000000000000000000011))
;; x should be 4611686018427387907

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10111101 #b00000000000000000000000)))
(check-sat)
(exit)
