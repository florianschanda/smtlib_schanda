(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RNA inf)
(declare-const x Int)
(assert (= x 200885910322210753131510824532550184441576177020862770992041956824477764256685053638162885256438959699836877534759168802843447472521363438306263649327042753271004454592493198120300316244606368187965476529566515824451145151310184885576565057518623056433232581541113305674671855523223437264640376759642259714445))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(+oo)

(declare-const z Float64)
(assert (= z (_ +oo 11 53)))
(assert (= y z))
