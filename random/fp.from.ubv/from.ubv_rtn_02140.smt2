(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b00110110001111010010001100000111))
;; x should be 909976327

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000011100 #b1011000111101001000110000011100000000000000000000000)))
(check-sat)
(exit)
