(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b10111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
;; x should be 255211775190703847597530955573826158590

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
