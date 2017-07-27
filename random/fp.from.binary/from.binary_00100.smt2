(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x804CDFC6)))
;; x should be Float32(0x804CDFC6 [Rational(-2519011, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10000000010011001101111111000110

(assert (not (= y #b10000000010011001101111111000110)))
(check-sat)
(exit)
