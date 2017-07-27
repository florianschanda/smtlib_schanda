(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b01010001 #b00001011111001111000000)))
;; x should be Float32(0x2885F3C0 [Rational(137167, 9223372036854775808), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00101000100001011111001111000000

(assert (not (= y #b00101000100001011111001111000000)))
(check-sat)
(exit)
