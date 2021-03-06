(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFBCBC5B7)))
;; x should be Float32(0xFBCBC5B7 [Rational(-2116092791456458996077975963755872256), -2116092791456458996077975963755872256.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0069E542)))
;; y should be Float32(0x0069E542 [Rational(3469985, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01010000 #b11010100001110000100000)))
;; z should be Float32(0x286A1C20 [Rational(479457, 36893488147419103232), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b01111001 #b01010001001010100101001)))
(check-sat)
(exit)
