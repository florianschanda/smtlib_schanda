(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x059EE150)))
;; x should be Float32(0x059EE150 [Rational(650773, 43556142965880123323311949751266331066368), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x38B3DC2A00000000 [Rational(650773, 43556142965880123323311949751266331066368), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x38B3DC2A00000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
