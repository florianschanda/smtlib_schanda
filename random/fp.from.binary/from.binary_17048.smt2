(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A358B52)))
;; x should be Float32(0x4A358B52 [Rational(5948841, 2), 2974420.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01001010001101011000101101010010

(assert (= y #b01001010001101011000101101010010))
(check-sat)
(exit)
