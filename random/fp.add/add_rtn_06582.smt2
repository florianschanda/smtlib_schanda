(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b11101001010001000101000)))
;; x should be Float32(0x4974A228 [Rational(2004037, 2), 1002018.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00670130)))
;; y should be Float32(0x00670130 [Rational(421907, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (= result ((_ to_fp 8 24) #x4974A228)))
(check-sat)
(exit)
